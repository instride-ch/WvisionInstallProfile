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

namespace AppBundle\Templating;

use Pimcore\Model\Document;
use Pimcore\Model\Document\Service;
use Pimcore\Tool;

class LanguageSwitcher
{
    /**
     * @var Service
     */
    protected $documentService;

    /**
     * @param Service $documentService
     */
    public function __construct(Service $documentService)
    {
        $this->documentService = $documentService;
    }

    /**
     * @param Document $document
     *
     * @return array
     */
    public function getLocalizedLinks(Document $document)
    {
        $translations = $this->documentService->getTranslations($document);

        $links = [];
        foreach (Tool::getValidLanguages() as $language) {
            $target = '/' . $language;

            if (isset($translations[$language])) {
                $localizedDocument = Document::getById($translations[$language]);

                if ($localizedDocument) {
                    $target = $localizedDocument->getFullPath();
                }
            }

            $isActive = false;
            if ($document->getProperty('language') === $language) {
                $isActive = true;
            }

            $links[$target]['display'] = \Locale::getDisplayLanguage($language);
            $links[$target]['isActive'] = $isActive;
        }

        return $links;
    }
}
