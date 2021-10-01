<?php
    require '/Users/ioacademy/sites/academyServer/docker-image/html/mtg-collector-app/php/db.php';
    use PHPUnit\Framework\TestCase;

    class db extends TestCase
    {
        public function test_whitelist_correctinput()
        {
            $expected = "Artifact";
            $input = "Artifact";
            $case = white_list($input, ["Artifact"], "Wrong input");
            $this->assertEquals($expected, $case);
        }
        public function test_multiplyByTwo_malformederror()
        {
            $input = "reallybadstring";
            $this->expectExceptionMessage('Wrong input');
            $case=white_list($input,["Artifact"],"Wrong input");
        }
    }