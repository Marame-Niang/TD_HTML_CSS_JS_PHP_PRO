<?php
    require_once 'M_db.php';

        function addClientS($matricule,$cni,$nom,$prenom,$sexe,$datenaiss,$tel,$adresse,$email){
            $sql = "INSERT INTO personne VALUES('$matricule','$cni','$nom','$prenom','$sexe',
            '$datenaiss','$tel','$adresse','$email',null,null,null,null,null,null)";
            $db = getConnexion();
            // var_dump($sql);
            // die();
            return $db->exec($sql);
    }

    function addClientC($matricule,$cni,$nom,$prenom,$sexe,$datenaiss,$tel,$adresse,$email,$raison_sociale,$salaire,$nom_employeur,$adr_employeur){
        $sql = "INSERT INTO personne VALUES('$matricule','$cni','$nom','$prenom','$sexe','$datenaiss','$tel','$adresse','$email','$raison_sociale',$salaire,'$nom_employeur','$adr_employeur',null,null)";
        
        $db = getConnexion();
            var_dump($sql);
            return $db->exec($sql);
    }

    function addEntreprise($nom_entreprise,$tel_entreprise,$email_entreprise,$budget_entreprise,$adr_entreprise){
        $budget_entreprise = floatval($budget_entreprise);
        $sql = "INSERT INTO entreprise VALUES(null,'$nom_entreprise','$tel_entreprise'
        ,'$email_entreprise',null,null,$budget_entreprise,'$adr_entreprise')";
        $db = getConnexion();
        var_dump($sql);
        $db->exec($sql);
        return $id_entreprise = $db->lastInsertId();
        
        }
    

    function searchClientbyMat($mat){
        $sql = "SELECT * FROM personne WHERE cin LIKE '%".$mat."%'";
        
        $db = getConnexion();
            var_dump($sql);
            return $db->exec($sql);

    }
 
    

  
    ?>