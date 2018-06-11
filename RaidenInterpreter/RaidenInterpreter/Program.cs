using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RaidenInterpreter
{
    class Program
    {
        static void Main(string[] args)
        {
            string exit = string.Empty;
            do
            {
                Console.Clear();
                string op = string.Empty;
                Console.WriteLine("Instrução:");
                op = Console.ReadLine();
                string jump = string.Empty;
                string instrucao = string.Empty;
                if (op == "Nope")
                {
                    instrucao = "00000000000000000000000000000000";
                }
                else if (op == "Adição")
                {
                    instrucao = "000001";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("RT:");
                    string rt = Console.ReadLine();
                    rt = Convert.ToString(Convert.ToInt32(rt), 2).PadLeft(5, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(11, '0');
                    instrucao = (instrucao + rd + rs + rt + c);
                }
                else if (op == "Adição Imediato")
                {
                    instrucao = "000010";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("Imediato(6 bits):");
                    string im = Console.ReadLine();
                    im = Convert.ToString(Convert.ToInt32(im), 2).PadLeft(6, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(10, '0');
                    instrucao = instrucao + rd + rs + c + im;
                }
                else if (op == "Subtração")
                {
                    instrucao = "000011";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("RT:");
                    string rt = Console.ReadLine();
                    rt = Convert.ToString(Convert.ToInt32(rt), 2).PadLeft(5, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(11, '0');
                    instrucao = (instrucao + rd + rs + rt + c);
                }
                else if (op == "Subtração Imediato")
                {
                    instrucao = "000100";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("Imediato(6 bits):");
                    string im = Console.ReadLine();
                    im = Convert.ToString(Convert.ToInt32(im), 2).PadLeft(6, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(10, '0');
                    instrucao = instrucao + rd + rs + c + im;
                }
                else if (op == "Multiplicação")
                {
                    instrucao = "000101";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("RT:");
                    string rt = Console.ReadLine();
                    rt = Convert.ToString(Convert.ToInt32(rt), 2).PadLeft(5, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(11, '0');
                    instrucao = (instrucao + rd + rs + rt + c);
                }
                else if (op == "Divisão")
                {
                    instrucao = "000110";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("RT:");
                    string rt = Console.ReadLine();
                    rt = Convert.ToString(Convert.ToInt32(rt), 2).PadLeft(5, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(11, '0');
                    instrucao = (instrucao + rd + rs + rt + c);
                }
                else if (op == "Resto")
                {
                    instrucao = "000111";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("RT:");
                    string rt = Console.ReadLine();
                    rt = Convert.ToString(Convert.ToInt32(rt), 2).PadLeft(5, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(11, '0');
                    instrucao = (instrucao + rd + rs + rt + c);
                }
                else if (op == "And")
                {
                    instrucao = "001000";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("RT:");
                    string rt = Console.ReadLine();
                    rt = Convert.ToString(Convert.ToInt32(rt), 2).PadLeft(5, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(11, '0');
                    instrucao = (instrucao + rd + rs + rt + c);
                }
                else if (op == "And Imediato")
                {
                    instrucao = "001001";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("Imediato(6 bits):");
                    string im = Console.ReadLine();
                    im = Convert.ToString(Convert.ToInt32(im), 2).PadLeft(6, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(10, '0');
                    instrucao = instrucao + rd + rs + c + im;
                }
                else if (op == "Or")
                {
                    instrucao = "001010";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("RT:");
                    string rt = Console.ReadLine();
                    rt = Convert.ToString(Convert.ToInt32(rt), 2).PadLeft(5, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(11, '0');
                    instrucao = (instrucao + rd + rs + rt + c);
                }
                else if (op == "Or Imediato")
                {
                    instrucao = "001011";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("Imediato(6 bits):");
                    string im = Console.ReadLine();
                    im = Convert.ToString(Convert.ToInt32(im), 2).PadLeft(6, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(10, '0');
                    instrucao = instrucao + rd + rs + c + im;
                }
                else if (op == "Xor")
                {
                    instrucao = "001100";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("RT:");
                    string rt = Console.ReadLine();
                    rt = Convert.ToString(Convert.ToInt32(rt), 2).PadLeft(5, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(11, '0');
                    instrucao = (instrucao + rd + rs + rt + c);
                }
                else if (op == "Xor Imediato")
                {
                    instrucao = "001101";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("Imediato(6 bits):");
                    string im = Console.ReadLine();
                    im = Convert.ToString(Convert.ToInt32(im), 2).PadLeft(6, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(10, '0');
                    instrucao = instrucao + rd + rs + c + im;
                }
                else if (op == "Not")
                {
                    instrucao = "001110";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(16, '0');
                    instrucao = (instrucao + rd + rs + c);
                }
                else if (op == "Desloca Esquerda")
                {
                    instrucao = "001111";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("RT:");
                    string rt = Console.ReadLine();
                    rt = Convert.ToString(Convert.ToInt32(rt), 2).PadLeft(5, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(11, '0');
                    instrucao = (instrucao + rd + rs + rt + c);
                }
                else if (op == "Desloca Direita")
                {
                    instrucao = "010000";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("RT:");
                    string rt = Console.ReadLine();
                    rt = Convert.ToString(Convert.ToInt32(rt), 2).PadLeft(5, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(11, '0');
                    instrucao = (instrucao + rd + rs + rt + c);
                }
                else if (op == "Load")
                {
                    instrucao = "010001";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("Data(RS):");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(16, '0');
                    instrucao = (instrucao + rd + rs + c);
                }
                else if (op == "Load Imediato")
                {
                    instrucao = "010010";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("Imediato(6 bits):");
                    string im = Console.ReadLine();
                    im = Convert.ToString(Convert.ToInt32(im), 2).PadLeft(6, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(15, '0');
                    instrucao = (instrucao + rd + c + im);
                }
                else if (op == "Store")
                {
                    instrucao = "010011";
                    Console.WriteLine("RD(Address):");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    Console.WriteLine("Data(RS):");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(16, '0');
                    instrucao = (instrucao + rd + rs + c);
                }
                else if (op == "Jump")
                {
                    instrucao = "010100";
                    Console.WriteLine("Imediato:");
                    jump = Convert.ToString(Convert.ToInt32(Console.ReadLine()), 2).PadLeft(26, '0');
                    instrucao = instrucao + jump;
                }
                else if (op == "Branch on equal")
                {
                    instrucao = "010101";
                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("RT:");
                    string rt = Console.ReadLine();
                    rt = Convert.ToString(Convert.ToInt32(rt), 2).PadLeft(5, '0');

                    Console.WriteLine("Linha pulo:");
                    string branch = Console.ReadLine();
                    branch = Convert.ToString(Convert.ToInt32(branch), 2).PadLeft(11, '0');

                    string rd = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(5, '0');
                    instrucao = (instrucao + rd + rs + rt + branch);
                }
                else if (op == "Branch on greater than")
                {
                    instrucao = "010110";
                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("RT:");
                    string rt = Console.ReadLine();
                    rt = Convert.ToString(Convert.ToInt32(rt), 2).PadLeft(5, '0');

                    Console.WriteLine("Linha pulo:");
                    string branch = Console.ReadLine();
                    branch = Convert.ToString(Convert.ToInt32(branch), 2).PadLeft(11, '0');

                    string rd = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(5, '0');
                    instrucao = (instrucao + rd + rs + rt + branch);
                }
                else if (op == "Branch on greater than or equal")
                {
                    instrucao = "010111";
                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("RT:");
                    string rt = Console.ReadLine();
                    rt = Convert.ToString(Convert.ToInt32(rt), 2).PadLeft(5, '0');

                    Console.WriteLine("Linha pulo:");
                    string branch = Console.ReadLine();
                    branch = Convert.ToString(Convert.ToInt32(branch), 2).PadLeft(11, '0');

                    string rd = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(5, '0');
                    instrucao = (instrucao + rd + rs + rt + branch);
                }
                else if (op == "Branch on less than")
                {
                    instrucao = "011000";

                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("RT:");
                    string rt = Console.ReadLine();
                    rt = Convert.ToString(Convert.ToInt32(rt), 2).PadLeft(5, '0');

                    Console.WriteLine("Linha pulo:");
                    string branch = Console.ReadLine();
                    branch = Convert.ToString(Convert.ToInt32(branch), 2).PadLeft(11, '0');

                    string rd = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(5, '0');
                    instrucao = (instrucao + rd + rs + rt + branch);
                }
                else if (op == "Branch on less than or equal")
                {
                    instrucao = "011001";
                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("RT:");
                    string rt = Console.ReadLine();
                    rt = Convert.ToString(Convert.ToInt32(rt), 2).PadLeft(5, '0');

                    Console.WriteLine("Linha pulo:");
                    string branch = Console.ReadLine();
                    branch = Convert.ToString(Convert.ToInt32(branch), 2).PadLeft(11, '0');

                    string rd = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(5, '0');
                    instrucao = (instrucao + rd + rs + rt + branch);
                }
                else if (op == "Branch on not equal")
                {
                    instrucao = "011010";
                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    Console.WriteLine("RT:");
                    string rt = Console.ReadLine();
                    rt = Convert.ToString(Convert.ToInt32(rt), 2).PadLeft(5, '0');

                    Console.WriteLine("Linha pulo:");
                    string branch = Console.ReadLine();
                    branch = Convert.ToString(Convert.ToInt32(branch), 2).PadLeft(11, '0');

                    string rd = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(5, '0');
                    instrucao = (instrucao + rd + rs + rt + branch);
                }
                //else if (op == "Move") Igual ao store
                //{

                //}
                else if (op == "Entrada")
                {
                    instrucao = "011100";
                    Console.WriteLine("RD:");
                    string rd = Console.ReadLine();
                    rd = Convert.ToString(Convert.ToInt32(rd), 2).PadLeft(5, '0');

                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(21, '0');
                    instrucao = (instrucao + rd + c);
                }
                else if (op == "Saída")
                {
                    instrucao = "011101";
                    Console.WriteLine("RS:");
                    string rs = Console.ReadLine();
                    rs = Convert.ToString(Convert.ToInt32(rs), 2).PadLeft(5, '0');

                    string rd = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(5, '0');
                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(16, '0');
                    instrucao = (instrucao + rd + rs + c);
                }
                else if (op == "Halt")
                {
                    instrucao = "111111";
                    string c = Convert.ToString(Convert.ToInt32("0"), 2).PadLeft(26, '0');
                    instrucao = (instrucao + c);
                }

                Console.WriteLine(op + ": " + instrucao);
                Console.WriteLine("Sair?");
                exit = Console.ReadLine();
            } while (exit != "exit");
        }
    }
}
