.class public Lorg/spongycastle/asn1/DERExternalParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1Encodable;
.implements Lorg/spongycastle/asn1/InMemoryRepresentable;


# instance fields
.field private aaT:Lorg/spongycastle/asn1/ASN1StreamParser;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/spongycastle/asn1/DERExternalParser;->aaT:Lorg/spongycastle/asn1/ASN1StreamParser;

    .line 16
    return-void
.end method


# virtual methods
.method public eN()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 29
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/DERExternal;

    iget-object v1, p0, Lorg/spongycastle/asn1/DERExternalParser;->aaT:Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1StreamParser;->eV()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERExternal;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 31
    :catch_0
    move-exception v2

    .line 33
    new-instance v0, Lorg/spongycastle/asn1/ASN1Exception;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERExternalParser;->eN()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 43
    :catch_0
    move-exception v2

    .line 45
    new-instance v0, Lorg/spongycastle/asn1/ASN1ParsingException;

    const-string v1, "unable to get DER object"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 47
    :catch_1
    move-exception v2

    .line 49
    new-instance v0, Lorg/spongycastle/asn1/ASN1ParsingException;

    const-string v1, "unable to get DER object"

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
