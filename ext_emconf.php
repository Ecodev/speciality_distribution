<?php
$EM_CONF[$_EXTKEY] = [
    'title' => 'Speciality Distribution',
    'description' => 'Delivers a special website just for you. This distribution can be installed via Composer with command ``composer create-project ecodev/typo3-cms-speciality-distribution htdocs dev-master``',
    'category' => 'distribution',
    'state' => 'stable',
    'author' => 'Fabien Udriot',
    'author_email' => 'fabien@ecodev.ch',
    'author_company' => 'Ecodev',
    'version' => '1.3.0-dev',
    'constraints' =>
        [
            'depends' =>
                [
                    'typo3' => '7.6.0-7.99.99',
                    'speciality' => '0.0.0-0.0.0',
                    'scheduler' => '0.0.0-0.0.0',
                    'realurl' => '0.0.0-0.0.0',
                    'vidi' => '0.0.0-0.0.0',
                    'vidi_frontend' => '0.0.0-0.0.0',
                    'seo_basics' => '0.0.0-0.0.0',
                ],
            'conflicts' =>
                [
                    'css_styled_content' => '',
                ],
            'suggests' =>
                [
                ],
        ],
];
