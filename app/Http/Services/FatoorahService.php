<?php

namespace App\Http\Services;

use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;

class FatoorahServices
{
    public $request_client;
    public $base_url;
    public $headers;

    public function __construct(Client $client)
    {
        $this->request_client = $client;
        $this->base_url = env('FATOORA_BASE_URL');
        $this->headers = [
            'Content-Type' => 'application/json',
            'authorization' => 'Bearer ' . env('FATOORA_API_TOKEN'),
        ];
    }

    private function buildRequest($url, $method, $body = [])
    {
        $request = new Request($method, $this->base_url . $url, $this->headers);

        if (!$body)
            return false;

        $response = $this->request_client->send($request, ['json', $body]);

        if ($response->getStatusCode() != 200)
            return false;

        $response = json_decode($response->getBody(), true);

        return $response;
    }

    private function sendPayment($patient_id, $fee, $plan_id, $subscriptionPlan)
    {
        $request_data = $this->parsePaymentData();

        $response = $this->buildRequest('/', 'POST', $request_data);

        if ($response)
            return $this->saveTransactionPayment($patient_id, $request_data['data']['invoice_id']);

        return $response;
    }
}
