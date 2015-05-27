.class public Lorg/spongycastle/asn1/DEROctetStringParser;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/ASN1OctetStringParser;


# instance fields
.field private abl:Lorg/spongycastle/asn1/DefiniteLengthInputStream;


# direct methods
.method constructor <init>(Lorg/spongycastle/asn1/DefiniteLengthInputStream;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/spongycastle/asn1/DEROctetStringParser;->abl:Lorg/spongycastle/asn1/DefiniteLengthInputStream;

    .line 15
    return-void
.end method


# virtual methods
.method public eL()Ljava/io/InputStream;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/spongycastle/asn1/DEROctetStringParser;->abl:Lorg/spongycastle/asn1/DefiniteLengthInputStream;

    return-object v0
.end method

.method public eN()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .line 25
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v1, p0, Lorg/spongycastle/asn1/DEROctetStringParser;->abl:Lorg/spongycastle/asn1/DefiniteLengthInputStream;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DEROctetStringParser;->eN()Lorg/spongycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 34
    :catch_0
    move-exception v3

    .line 36
    new-instance v0, Lorg/spongycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException converting stream to byte array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lorg/spongycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
