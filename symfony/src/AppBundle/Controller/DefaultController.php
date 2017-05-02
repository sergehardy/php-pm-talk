<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     * @Template("AppBundle::pm.html.twig")
     */
    public function indexAction(Request $request)
    {
     return ['usage' => round(memory_get_usage(true)/1000000 ,2),
         'proc' => sys_getloadavg(),
     ];

    }
}
