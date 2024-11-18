package org.example.lab4.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.Size;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Entity
@Table(name = "nhan_vien")
public class NhanVien {
    @Id
    @Column(name = "id", nullable = false)
    private Integer id;

    @Size(max = 20)
    @Column(name = "ma", length = 20)
    private String ma;

    @Size(max = 30)
    @Column(name = "ten", length = 30)
    private String ten;

    @Size(max = 30)
    @Column(name = "ten_dem", length = 30)
    private String tenDem;

    @Size(max = 30)
    @Column(name = "ho", length = 30)
    private String ho;

    @Size(max = 10)
    @Column(name = "gioi_tinh", length = 10)
    private String gioiTinh;

    @Size(max = 100)
    @Column(name = "dia_chi", length = 100)
    private String diaChi;

    @Size(max = 30)
    @Column(name = "sdt", length = 30)
    private String sdt;

    @Size(max = 50)
    @Column(name = "mat_khau", length = 50)
    private String matKhau;

    @Column(name = "trang_thai")
    private Integer trangThai;

}