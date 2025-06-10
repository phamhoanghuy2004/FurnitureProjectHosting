FROM tomcat:9.0.105

# Xóa ứng dụng mặc định của Tomcat để đảm bảo không có xung đột
RUN rm -rf /usr/local/tomcat/webapps/*

# Sao chép file WAR và đổi tên thành ROOT.war để chạy ở root context
COPY FurnitureShop_11_11_14h-1.0.war /usr/local/tomcat/webapps/ROOT.war

# Khai báo cổng mà container sẽ lắng nghe
EXPOSE 8080

# Lệnh để khởi động Tomcat khi container chạy
CMD ["catalina.sh", "run"]