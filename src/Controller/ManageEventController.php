<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ManageEventController extends AbstractController
{
    #[Route('/manage/event', name: 'app_manage_event')]
    public function index(): Response
    {
        return $this->render('manage_event/index.html.twig', [
            'controller_name' => 'ManageEventController',
        ]);
    }
}
