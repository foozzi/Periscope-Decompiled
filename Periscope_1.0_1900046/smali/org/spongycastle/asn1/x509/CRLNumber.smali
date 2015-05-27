.class public Lorg/spongycastle/asn1/x509/CRLNumber;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private ayq:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/CRLNumber;->ayq:Ljava/math/BigInteger;

    .line 24
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 38
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/CRLNumber;->ayq:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public hc()Ljava/math/BigInteger;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CRLNumber;->ayq:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRLNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/CRLNumber;->hc()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
