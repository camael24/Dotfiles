Iabbr public public function <{name}> ( <{}>) {<CR><CR><{}><CR><Esc>xi<TAB>}<CR><Esc>xd0
Iabbr protected protected function <{name}> ( <{}>) {<CR><CR><{}><CR><Esc>xi<TAB>}<CR><Esc>xd0
Iabbr private private function <{name}> ( <{}>) {<CR><CR><{}><CR><Esc>xi<TAB>}<CR><Esc>xd0
Iabbr spublic public static function <{name}> ( <{}>) {<CR><CR><{}><CR><Esc>xi<TAB>}<CR><Esc>xd0
Iabbr sprotected protected static function <{name}> ( <{}>) {<CR><CR><{}><CR><Esc>xi<TAB>}<CR><Esc>xd0
Iabbr sprivate private static function <{name}> ( <{}>) {<CR><CR>><{}><CR><Esc>xi<TAB>}<CR><Esc>xd0
Iabbr apublic abstract public function <{name}> ( <{}>);<CR>
Iabbr aprotected abstract protected function <{name}> ( <{}>);<CR>
Iabbr aprivate abstract private function <{name}> ( <{}>);<CR>

Iabbr foreach foreach($<{iterator}> as $<{key}> => $<{value}>) <{}>
Iabbr while while($<{i}> <{}>) {<CR><CR><{}><CR><{i}>++;<CR><Esc>xxxxi}

Iabbr throw throw new Exception(<CR><TAB>'<{}>', <{}>);

Iabbr ift if(true === <{condition}>) <{}>
Iabbr iff if(false === <{condition}>) <{}>
Iabbr ifn if(null === <{condition}>) <{}>

Iabbr import /**<CR>Hoa\<{packageName}><CR>/<CR><Esc>xi-> import('<{packageName:substitute(@z, '\\', '.', 'g')}>')<CR><{}>
