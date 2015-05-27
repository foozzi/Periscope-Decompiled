.class public Lorg/spongycastle/asn1/eac/CVCertificate;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field private static aiI:I

.field private static aiJ:I

.field public static aiK:Ljava/lang/String;


# instance fields
.field private aiF:Lorg/spongycastle/asn1/eac/CertificateBody;

.field private aiG:[B

.field private aiH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x1

    sput v0, Lorg/spongycastle/asn1/eac/CVCertificate;->aiI:I

    .line 32
    const/4 v0, 0x2

    sput v0, Lorg/spongycastle/asn1/eac/CVCertificate;->aiJ:I

    .line 35
    const-string v0, "ISO-8859-1"

    sput-object v0, Lorg/spongycastle/asn1/eac/CVCertificate;->aiK:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 6

    .line 195
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 197
    iget v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->aiH:I

    sget v1, Lorg/spongycastle/asn1/eac/CVCertificate;->aiJ:I

    sget v2, Lorg/spongycastle/asn1/eac/CVCertificate;->aiI:I

    or-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->aiF:Lorg/spongycastle/asn1/eac/CertificateBody;

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 205
    :try_start_0
    new-instance v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    new-instance v1, Lorg/spongycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/spongycastle/asn1/eac/CVCertificate;->aiG:[B

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    const/4 v2, 0x0

    const/16 v3, 0x37

    invoke-direct {v0, v2, v3, v1}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    goto :goto_0

    .line 207
    :catch_0
    move-exception v5

    .line 209
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to convert signature!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :goto_0
    new-instance v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 v1, 0x21

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
