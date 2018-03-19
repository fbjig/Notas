<?php

// CORE.PHP -> Corrección de la sesión
Configure::write('Session', array(
            'defaults' => 'php',
            'cookie' => 'BACKEND_PHP_SESSION', // nombre de la cookie
            'timeout' => 120, // minutos
            'cookieTimeout' => 120, // minutos
            'autoRegenerate' => false, // FALSE para que se mantenga aunque abramos inspector, por ejemplo.
            'checkAgent' => false,
            'ini' => array(
                'session.gc_maxlifetime' => 120 * 60 // 2 Horas (minutos * 60)
            )
));
