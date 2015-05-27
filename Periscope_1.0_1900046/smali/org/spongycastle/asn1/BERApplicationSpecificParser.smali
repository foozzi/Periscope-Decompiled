.class public Lorg/spongycastle/asn1/BERApplicationSpecificParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1ApplicationSpecificParser;


# instance fields
.field private final aaG:Lorg/spongycastle/asn1/ASN1StreamParser;

.field private final tag:I


# direct methods
.method constructor <init>(ILorg/spongycastle/asn1/ASN1StreamParser;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lorg/spongycastle/asn1/BERApplicationSpecificParser;->tag:I

    .line 14
    iput-object p2, p0, Lorg/spongycastle/asn1/BERApplicationSpecificParser;->aaG:Lorg/spongycastle/asn1/ASN1StreamParser;

    .line 15
    return-void
.end method


# virtual methods
.method public eN()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 26
    new-instance v0, Lorg/spongycastle/asn1/BERApplicationSpecific;

    iget v1, p0, Lorg/spongycastle/asn1/BERApplicationSpecificParser;->tag:I

    iget-object v2, p0, Lorg/spongycastle/asn1/BERApplicationSpecificParser;->aaG:Lorg/spongycastle/asn1/ASN1StreamParser;

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1StreamParser;->eV()Lorg/spongycastle/asn1/ASN1EncodableVector;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/BERApplicationSpecific;-><init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 33
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/BERApplicationSpecificParser;->eN()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 35
    :catch_0
    move-exception v2

    .line 37
    new-instance v0, Lorg/spongycastle/asn1/ASN1ParsingException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
