<?php

namespace App\Controller;

use App\Entity\Event;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ManageEventController extends AbstractController
{
    private $em;
    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }

    #[Route('/manage_event/show/{id}', name: 'app-show-details')]
    public function details($id): Response
    {
        $event = $this->em->getRepository(Event::class)->find($id);

        // Foreign-Key call getter from Controller
        // $status = $event->getFkStatus();

        return $this->render('manage_event/show.html.twig', [
            'event' => $event,
            // 'Status' => $status
        ]);
    }
}
