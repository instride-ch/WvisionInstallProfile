<?php
/**
 * w-vision
 *
 * LICENSE
 *
 * For the full copyright and license information, please view the LICENSE.md
 * file that is distributed with this source code.
 *
 * @copyright  Copyright (c) 2017 w-vision AG (https://www.w-vision.ch)
 */

namespace AppBundle\Controller;

use Pimcore\Controller\FrontendController;

class ErrorController extends FrontendController
{
    /**
     * @return string The template to be rendered
     */
    public function errorAction()
    {
        return $this->renderTemplate('Error/error.html.twig');
    }
}
