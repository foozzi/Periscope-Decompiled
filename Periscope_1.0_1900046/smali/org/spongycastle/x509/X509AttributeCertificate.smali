.class public interface abstract Lorg/spongycastle/x509/X509AttributeCertificate;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/cert/X509Extension;


# virtual methods
.method public abstract checkValidity(Ljava/util/Date;)V
.end method

.method public abstract getEncoded()[B
.end method

.method public abstract getNotAfter()Ljava/util/Date;
.end method

.method public abstract getSerialNumber()Ljava/math/BigInteger;
.end method

.method public abstract tv()Lorg/spongycastle/x509/AttributeCertificateHolder;
.end method

.method public abstract ty()Lorg/spongycastle/x509/AttributeCertificateIssuer;
.end method

.method public abstract ڊ(Ljava/lang/String;)[Lorg/spongycastle/x509/X509Attribute;
.end method
