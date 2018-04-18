<?php
/**
 * w-vision
 *
 * LICENSE
 *
 * For the full copyright and license information, please view the LICENSE.md
 * file that is distributed with this source code.
 *
 * @copyright  Copyright (c) 2018 w-vision AG (https://www.w-vision.ch)
 */

namespace AppBundle\Controller;

use Pimcore\Controller\FrontendController;

class ErrorController extends FrontendController
{
    /**
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function errorAction()
    {
        return $this->renderTemplate('Error/error.html.twig');
    }
}
