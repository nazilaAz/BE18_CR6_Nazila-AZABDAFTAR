<?php

namespace App\Controller;

use App\Entity\Event;
use App\Form\Type\eventType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class ManageEventController extends AbstractController
{
    private $em;
    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }

    #[Route('/manage_event', name: 'app-manage_event')]
    public function index(): Response
    {
         $allEvents = $this->em->getRepository(Event::class)->findAll();
        //  dd($allEvents);
        return $this->render('home/index.html.twig', [
            'allEvents' => $allEvents
        ]);
    }

    #[Route('/manage_event/show/{id}', name: 'app-show-details')]
    public function details($id): Response
    {
        $event = $this->em->getRepository(Event::class)->find($id);

        return $this->render('manage_event/show.html.twig', [
            'event' => $event,
        ]);
    }

    #[Route('/manage_event/create', name: 'app-create')]
    public function CreateAction(Request $request): Response
    {
        $event = new Event();
        $form = $this->createForm(eventType::class, $event);
        $event = $form->getData();

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {

            $this->em->persist($event);
            $this->em->flush();

            return $this->redirectToRoute('app-manage_event');
        }
        return $this->render('manage_event/create.html.twig', array(
            'form' => $form,
        ));
    }

    #[Route('/manage_event/edit/{id}', name: 'app-manage-edit')]
    public function editAction(request $request, int $id): Response
    {
        $event = $this->em->getRepository(Event::class)->find($id);

        if (!$event) {
            throw $this->createNotFoundException(
                'No Event found for id ' . $id
            );
        }

        $form = $this->createForm(eventType::class, $event);
        $event = $form->getData();

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {

            $this->em->persist($event);
            $this->em->flush();

            return $this->redirectToRoute('app-manage_event');
        }
        return $this->render('manage_event/create.html.twig', array(
            'form' => $form,
        ));
    }
    #[Route('/manage_event/delete/{id}', name: 'app-manage-delete')]
    public function deleteAction($id): Response
    {
        $event = $this->em->getRepository(Event::class)->find($id);

        $this->em->remove($event);
        $this->em->flush();
        return $this->redirectToRoute('app-manage_event');
    }

    #[Route('/manage_event/find/{type}', name: 'app-manage_event-Find')]
    public function findType(string $type): Response
    {
         $findType = $this->em->getRepository(Event::class)->findBy(['type' => $type]);
        //  dd($findType);
        return $this->render('home/search.html.twig', [
            'findType' => $findType
        ]);
    }
}
