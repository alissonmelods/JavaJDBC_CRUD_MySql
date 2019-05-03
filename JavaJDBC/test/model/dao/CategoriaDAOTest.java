/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import javax.print.PrintException;
import model.bean.Categoria;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Alisson Melo
 */
public class CategoriaDAOTest {
    
    public static void main(String[] args) throws PrintException {
        //deletar();
    }
    
    public CategoriaDAOTest() {
    }

    
    public static void inserir() {
        Categoria cat = new Categoria("Roupas");
        CategoriaDAO dao = new CategoriaDAO();
        
        if(dao.save(cat)) {
            System.out.println("Salvo com sucesso!");
        }else{
            fail("Erro ao salvar");
        }        
    }
    
    public static void atualizar() {
        Categoria cat = new Categoria("Camisa");
        cat.setId(1);
        CategoriaDAO dao = new CategoriaDAO();
        
        if(dao.update(cat)) {
            System.out.println("Atualizado com sucesso!");
        }else{
            fail("Erro ao salvar");
        }        
    }
    
    public static void deletar() {
        Categoria cat = new Categoria();
        cat.setId(1);
        CategoriaDAO dao = new CategoriaDAO();
        
        if(dao.update(cat)) {
            System.out.println("Deletado com sucesso!");
        }else{
            fail("Erro ao deletar");
        }        
    }
    
    public static void listar() {
        CategoriaDAO dao = new CategoriaDAO();
        
        for(Categoria c: dao.findAll()) {
            System.out.println("Descrição: " + c.getDescricao());
        }
    }
    
    public static void listarP() {
        CategoriaDAO dao = new CategoriaDAO();
        
        for(Categoria c: dao.findProdutos()) {
            System.out.println("Nome produto: " + c.getDescricao());
        }
    }
    
}
