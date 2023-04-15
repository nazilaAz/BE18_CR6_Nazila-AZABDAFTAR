<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class TestetestController extends AbstractController
{
    #[Route('/testetest', name: 'app_testetest')]
    public function index(): Response
    {
        return $this->render('testetest/index.html.twig', [
            'controller_name' => 'TestetestController',
        ]);
    }
}
