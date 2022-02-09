const express = require('express')
const uuid = require('uuid')
const router = express.Router()


const members = require('../../src/Members')

router.get('/', (req, res) => res.json(members))

router.get('/:id', (req, res) => {
    const found = members.some(member => member.id === parseInt(req.params.id))
    if (found) {
        res.json(members.filter((member) => member.id === parseInt(req.params.id)))
    } else {
        //if there is no match with the id
        res.status(400).json({ message: `No member with the id of ${req.params.id}` })
    }
})

//create members
router.post('/', (req, res) => {
    //insert into database
    const newMember = {
        id : uuid.v4(), //!database e korle eta lagbe na
        name : req.body.name,
        email : req.body.email,
        status : 'active'
    }

    if(!newMember.name || !newMember.email){
        return res.status(400).json({ message : 'Please include name and email' })
    }

    members.push(newMember)
    res.json(members)
})

//update member
router.get('/:id', (req, res) => {
    //!will be different while using db
    const found = members.some(member => member.id === parseInt(req.params.id))
    if (found) {
        const updateMember = req.body
        members.forEach((member) => {
            if(member.id = parseInt(req.params.id)){
                member.name = updateMember.name ? updateMember.name : member.name
                member.email = updateMember.email ? updateMember.email : member.email

                res.json({message: 'Member update', member})
            }
        })
    } else {
        //if there is no match with the id
        res.status(400).json({ message: `No member with the id of ${req.params.id}` })
    }
})


router.delete('/:id', (req, res) => {
    const found = members.some(member => member.id === parseInt(req.params.id))
    if (found) {
        res.json({
            message : 'Member deleted',
            members : members.filter((member) => member.id !== parseInt(req.params.id))
        })
    } else {
        //if there is no match with the id
        res.status(400).json({ message: `No member with the id of ${req.params.id}` })
    }
})


module.exports = router
