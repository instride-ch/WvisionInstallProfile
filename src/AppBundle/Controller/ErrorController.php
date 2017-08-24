<?php
/**
 * w-vision
 *
 * LICENSE
 *
 * For the full copyright and license information, please view the LICENSE.md
 * file that is distributed with this source code.
 *
 * @copyright  Copyright (c) 2017 Woche-Pass AG (https://www.w-vision.ch)
 */

namespace AppBundle\Controller;

use Pimcore\Controller\FrontendController;
use Symfony\Component\HttpFoundation\Request;

class ErrorController extends FrontendController
{
    /**
     * @param Request $request
     *
     * @return string The template to be rendered
     */
    public function errorAction(Request $request)
    {
        return $this->renderTemplate('Error/error.html.twig', [
//            'params' => 'additional-data'
        ]);
    }
}
