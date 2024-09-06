<?php 

class UtilisateurS
{ 
    private $id;
    private $nom;
    private $prenom;
    private $mail;
    private $mdp;
    private $telephone;
    public function __construct($id, $nom, $prenom, $mail, $mdp, $telephone)
    {
        $this->id = $id;
        $this->nom = $nom; 
        $this->prenom = $prenom;
        $this->mail = $mail;
        $this->mdp = $mdp;
        $this->telephone = $telephone;
    }

    

    /**
     * Get the value of id
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set the value of id
     */
    public function setId($id): self
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Get the value of nom
     */
    public function getNom()
    {
        return $this->nom;
    }

    /**
     * Set the value of nom
     */
    public function setNom($nom): self
    {
        $this->nom = $nom;

        return $this;
    }

    /**
     * Get the value of prenom
     */
    public function getPrenom()
    {
        return $this->prenom;
    }

    /**
     * Set the value of prenom
     */
    public function setPrenom($prenom): self
    {
        $this->prenom = $prenom;

        return $this;
    }

    /**
     * Get the value of mail
     */
    public function getMail()
    {
        return $this->mail;
    }

    /**
     * Set the value of mail
     */
    public function setMail($mail): self
    {
        $this->mail = $mail;

        return $this;
    }

    /**
     * Get the value of mdp
     */
    public function getMdp()
    {
        return $this->mdp;
    }

    /**
     * Set the value of mdp
     */
    public function setMdp($mdp): self
    {
        $this->mdp = $mdp;

        return $this;
    }

    /**
     * Get the value of telephone
     */
    public function getTelephone()
    {
        return $this->telephone;
    }

    /**
     * Set the value of telephone
     */
    public function setTelephone($telephone): self
    {
        $this->telephone = $telephone;

        return $this;
    }
}

?>