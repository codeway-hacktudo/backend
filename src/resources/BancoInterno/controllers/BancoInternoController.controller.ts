import { Request, Response } from "express";

export class BancoInternoController {
    getMockedInfo(request: Request, response: Response) {
        const choose = request.query.number
        const mocked_array = [{
            companions_name: 'joao jose da silva',
            mothers_name: 'Josefina Andrade'
        },{
            companions_name: 'Maria Joana e Silva',
            mothers_name: 'Lucelena Ernane'
        }]
        return response.json({
            message: mocked_array[Number(choose)]
        })
    }

}