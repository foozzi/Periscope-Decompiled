.class public Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private aYs:Ljava/security/KeyStore$ProtectionParameter;

.field private bbp:Ljava/io/OutputStream;

.field private bbq:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;->bbp:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;->aYs:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method

.method public oW()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;->bbq:Z

    return v0
.end method
