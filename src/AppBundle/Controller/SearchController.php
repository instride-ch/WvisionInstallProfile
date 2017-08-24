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

class SearchController extends FrontendController
{
    /**
     * @param Request $request
     *
     * @return string The template to be rendered
     */
    public function searchAction(Request $request)
    {
        $query = $request->get('q');
        $bundle = 'LuceneSearchBundle';

        if (!array_key_exists($bundle, $this->container->getParameter('kernel.bundles'))) {
            throw $this->createNotFoundException(sprintf('%s does not exist', $bundle));
        }

        return $this->renderTemplate('Search/search.html.twig', [
            'query' => $query
        ]);
    }
}
