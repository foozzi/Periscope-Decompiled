.class public Lorg/spongycastle/asn1/x9/DHPublicKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private ahC:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Integer;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'y\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/DHPublicKey;->ahC:Lorg/spongycastle/asn1/ASN1Integer;

    .line 41
    return-void
.end method

.method public static ᴷ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/DHPublicKey;
    .locals 3

    .line 20
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/x9/DHPublicKey;

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x9/DHPublicKey;

    return-object v0

    .line 25
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_2

    .line 27
    new-instance v0, Lorg/spongycastle/asn1/x9/DHPublicKey;

    move-object v1, p0

    check-cast v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x9/DHPublicKey;-><init>(Lorg/spongycastle/asn1/ASN1Integer;)V

    return-object v0

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DHPublicKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHPublicKey;->ahC:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public ip()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/DHPublicKey;->ahC:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method
