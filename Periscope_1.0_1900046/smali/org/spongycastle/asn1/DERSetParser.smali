.class public Lorg/spongycastle/asn1/DERSetParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1SetParser;


# instance fields
.field private aaT:Lorg/spongycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lorg/spongycastle/asn1/ASN1StreamParser;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lorg/spongycastle/asn1/DERSetParser;->aaT:Lorg/spongycastle/asn1/ASN1StreamParser;

    .line 13
    return-void
.end method


# virtual methods
.method public eN()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 24
    new-instance v0, Lorg/spongycastle/asn1/DERSet;

    iget-object v1, p0, Lorg/spongycastle/asn1/DERSetParser;->aaT:Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1StreamParser;->eV()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;Z)V

    return-object v0
.end method

.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERSetParser;->eN()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 33
    :catch_0
    move-exception v2

    .line 35
    new-instance v0, Lorg/spongycastle/asn1/ASN1ParsingException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
