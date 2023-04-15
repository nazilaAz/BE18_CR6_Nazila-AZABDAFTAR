<?php

namespace App\Controller;


use App\Entity\Event;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


class HomeController extends AbstractController
{
    private $em;
    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }

    #[Route('/', name: 'app_home')]
    public function index(): Response
    {
         $allEvents = $this->em->getRepository(Event::class)->findAll();
        //  dd($allEvents);
        return $this->render('home/index.html.twig', [
            'allEvents' => $allEvents
        ]);
    }
}
