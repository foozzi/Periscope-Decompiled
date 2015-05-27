.class Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CertId"
.end annotation


# instance fields
.field aYK:[B

.field final synthetic aYL:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;


# direct methods
.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)V
    .locals 1

    .line 147
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;->aYL:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1, p2}, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;->ˊ(Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->gY()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;->aYK:[B

    .line 149
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;[B)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;->aYL:Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;->aYK:[B

    .line 155
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 165
    if-ne p1, p0, :cond_0

    .line 167
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    if-nez v0, :cond_1

    .line 172
    const/4 v0, 0x0

    return v0

    .line 175
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;

    move-object v2, v0

    .line 177
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;->aYK:[B

    iget-object v1, v2, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;->aYK:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ﹺ([B[B)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/keystore/pkcs12/PKCS12KeyStoreSpi$CertId;->aYK:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method
