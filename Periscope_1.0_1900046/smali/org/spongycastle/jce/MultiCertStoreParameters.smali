.class public Lorg/spongycastle/jce/MultiCertStoreParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# instance fields
.field private aZI:Ljava/util/Collection;

.field private aZJ:Z


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .line 49
    return-object p0
.end method

.method public nY()Ljava/util/Collection;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/spongycastle/jce/MultiCertStoreParameters;->aZI:Ljava/util/Collection;

    return-object v0
.end method

.method public nZ()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lorg/spongycastle/jce/MultiCertStoreParameters;->aZJ:Z

    return v0
.end method
