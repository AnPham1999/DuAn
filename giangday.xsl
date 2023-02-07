<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
	<xsl:template match="/">
		<html>
			<head>
				<title>Danh sách độc giả</title>
				<link rel="stylesheet" type="text/css" href="juicersStyle.css" />
				<style>
					table,
					th,
					td {
						border: 1px solid;
						padding: 5px;
					}
					table {
						border-collapse: collapse;
						color:black;
					}
				</style>
			</head>
			<body>
				<h2>Kiểm tra Học Kỳ I MÔN XML</h2>
				<h2>Phạm Nguyễn Thiên Ân - 19103004 - CNTT K19 </h2>
				<table>
					<tr>
						<th>Tên Môn Học</th>
						<th>Số TC</th>
						<th>Tên Giáo Viên </th>
						<th>Ngày Bắt Đầu</th>
					</tr>
					<xsl:for-each select="//QuanLyGiangday/MonHoc">
						<tr>
							<td>
								<xsl:value-of select="tenMH"/>
							</td>
							<td>
								<xsl:value-of select="soTC" />
							</td>
							<td>
								<xsl:value-of select="tenGV" />
							</td>
							<td>
								<xsl:value-of select="ngaybatdau" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>