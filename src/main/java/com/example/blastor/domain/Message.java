package com.example.blastor.domain;

import javax.persistence.*;

@Entity
public class Message {
    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;

    private String text;
    private  String tag;
    private String companyName;
    private String companyPlace;
    private  String typeOrder;
    private  String companyDate;
    private String companyTime;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;

    private String filename;

    public Message() {
    }

    public Message(String text,
                   String tag,
                   User user,
                   String companyName,
                   String companyPlace,
                   String companyDate,
                   String companyTime) {
        this.author = user;
        this.text = text;
        this.tag = tag;
        this.companyName = companyName;
        this.companyPlace = companyPlace;
        this.companyDate = companyDate;
        this.companyTime = companyTime;
    }

    public String getAuthorName() {
        return author !=null ? author.getUsername() : "<none>";
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getText() {
        return text;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }
    public String getCompanyPlace() {
        return companyPlace;
    }

    public void setCompanyPlace(String companyPlace) {
        this.companyPlace = companyPlace;
    }

    public String getCompanyDate() {
        return companyDate;
    }

    public void setCompanyDate(String companyDate) {
        this.companyDate = companyDate;
    }

    public String getCompanyTime() {
        return companyTime;
    }

    public void setCompanyTime(String companyTime) {
        this.companyTime = companyTime;
    }
}
