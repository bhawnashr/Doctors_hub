package Project.servlet;


import java.io.IOException;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import Project.sql.CBean;


public class User_search extends HttpServlet
{

	CBean CBean=new CBean();
       
	public void init() throws ServletException
	{

			
			try{
				CBean.makeConnection();
			}
			catch(Exception e){
				System.out.println(e.getMessage());
			}

	}




	public void service(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException
	{
         
		//HttpSession session=request.getSession();
                System.out.println("service");
                   
		if(request.getParameter("usearch")!=null){		
		//session.setAttribute("s_srcval",request.getParameter("search"));
		
		}
		 
		 StringBuffer qry=   new StringBuffer();
		try
		{   
			
                        
                        String lname=request.getParameter("cb_lname");
			            String fname=request.getParameter("cb_fname");
						String desg=request.getParameter("cb_desg");
						String spcl=request.getParameter("cb_spcl");    
			            String email=request.getParameter("cb_email");
                        String value=request.getParameter("usearch"); 
     
						qry.append("select sno, fname, lname,desg, qual, spelz, exp, foe, university, mobile, email, sex, dob, joindate   from MainLoginTable where");                                                         
                            if(fname!=null){
                               qry.append(" ").append("(fname like '%").append(value).append("%' ");

                               if(lname!=null || desg!=null || spcl!=null || email!=null){
				qry.append("or ");
			       }
			       else{
				qry.append(") ");
			        } 
                                                     
                            }
                              
                             if(lname!=null){
                                  if(fname == null){
                                    qry.append("(");
                                   }
                               qry.append(" ").append("lname like '%").append(value).append("%'  ");                                                     
                                if(desg!=null || spcl!=null || email!=null){
                                  qry.append("or ");
                                }
                                 else{
				qry.append(" )");
			        } 
                                   
                              }
                             if(desg!=null){
                                  if((fname == null)&&(lname==null)){
                                    qry.append("(");
                                   }
                              qry.append(" ").append("desg like '%").append(value).append("%' ");                                                        
                                if( spcl!=null){
                                  qry.append("or ");
                                }
                                 else{
				qry.append(" )");
			        } 
					}
                              if(spcl!=null){
                                 if((fname == null)&&(lname==null)&&(desg==null)){
                                   qry.append("(");
                                  }
                               qry.append(" ").append("spelz like '%").append(value).append("%' ");  
							   if(email!=null){
							   qry.append("or ");
							   }                                                   
                    
                               else{
                                qry.append(" )");
  						            }                            
                        }

                                if(email!=null){
                                 if((fname == null) && (lname==null) && (desg==null) && (spcl==null)){
                                   qry.append("(");
                                  }
                               qry.append(" ").append("email like '%").append(value).append("%') ");                                                     
                    
                                                         
                              
                        }

   
                    

              }
					
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
                 
                 System.out.println("sql is---->"+qry);    
                request.setAttribute("query",qry);
        
		RequestDispatcher dispatcher =request.getRequestDispatcher("ModifyUser1.jsp");
		dispatcher.forward(request,response);

	}


	

	public void destroy() {

		
		try{
			CBean.closeConnection();

		 }
		 catch(Exception e){}
	}


}
