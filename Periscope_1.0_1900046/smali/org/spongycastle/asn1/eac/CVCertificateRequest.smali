.class public Lorg/spongycastle/asn1/eac/CVCertificateRequest;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field private static aiI:I

.field private static aiJ:I

.field public static aiM:[B


# instance fields
.field private aiF:Lorg/spongycastle/asn1/eac/CertificateBody;

.field private aiL:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    const/4 v0, 0x1

    sput v0, Lorg/spongycastle/asn1/eac/CVCertificateRequest;->aiI:I

    .line 30
    const/4 v0, 0x2

    sput v0, Lorg/spongycastle/asn1/eac/CVCertificateRequest;->aiJ:I

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/asn1/eac/CVCertificateRequest;->aiM:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
    .end array-data
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6

    .line 155
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 157
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificateRequest;->aiF:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 161
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/spongycastle/asn1/eac/CVCertificateRequest;->aiL:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x0

    const/16 v3, 0x37

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_0

    .line 163
    :catch_0
    move-exception v5

    .line 165
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to convert signature!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :goto_0
    new-instance v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 v1, 0x21

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
