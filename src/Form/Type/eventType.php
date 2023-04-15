<?php

namespace App\Form\Type;

use App\Entity\Event;
use Doctrine\ORM\EntityRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
// use App\Form\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class eventType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', TextType::class, [
                'attr' => array(
                    'class' => 'form-control mt-3',
                    'placeholder' => "Event's name...",
                ),
                'label' => false,
            ])
            ->add('date', DateTimeType::class, [
                'attr' => array(
                    'class' => 'form-control mt-3',
                ),
                'label' => false,
            ])
            ->add('description', TextareaType::class, [
                'attr' => array(
                    'class' => 'form-control mt-3',
                    'placeholder' => 'Description...',
                ),
                'label' => false,
            ])
            ->add('image', TextType::class, [
                'attr' => array(
                    'class' => 'form-control mt-3',
                    'placeholder' => 'Link of Picture...',
                ),
                'label' => false,
            ])
            ->add('capacity', IntegerType::class, [
                'attr' => array(
                    'class' => 'form-control mt-3',
                    'placeholder' => 'Capacity...'
                ),
                'label' => false,
            ])
            ->add('email', EmailType::class, [
                'attr' => array(
                    'class' => 'form-control mt-3',
                    'placeholder' => 'Email...'
                ),
                'label' => false,
            ])
            ->add('phone', TextType::class, [
                'attr' => array(
                    'class' => 'form-control mt-3',
                    'placeholder' => 'Phone...'
                ),
                'label' => false,
            ])
            ->add('address', TextType::class, [
                'attr' => array(
                    'class' => 'form-control bg-transparent block mt-10 border-b-2 w-full h-60 text-6xl outline-none mt-3',
                    'placeholder' => 'Kärntner Straße 26,1010 Wien'
                ),
                'label' => false,
            ])
            ->add('URL', TextType::class, [
                'attr' => array(
                    'class' => 'form-control bg-transparent block mt-10 border-b-2 w-full h-60 text-6xl outline-none mt-3',
                    'placeholder' => 'URL'
                ),
                'label' => false,
            ])
            ->add(
                'type',
                ChoiceType::class,
                ['choices'  => [
                        'Dance' => 'Dance',
                        'Theater' => 'Theater',
                        'Opera' => 'Opera',
                        'Painting' => 'Painting',
                        'Design' => 'Design',
                        'Classic' => 'Classic',],
                        'attr' => array('class' => 'form-select mt-3',),
                        'label' => false,
                ],
                // [
                //     'attr' => array('class' => 'form-control bg-transparent block mt-10 border-b-2 w-full h-60 text-6xl outline-none mt-3',),
                //     // 'required' => true,
                // ]
            )
            ->add('save', SubmitType::class,  ['attr' => array('class' => 'form-control btn mt-3', 'label' => 'Create New Event')]);
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Event::class,
        ]);
    }
}
