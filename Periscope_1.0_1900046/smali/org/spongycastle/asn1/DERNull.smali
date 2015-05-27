.class public Lorg/spongycastle/asn1/DERNull;
.super Lorg/spongycastle/asn1/ASN1Null;
.source ""


# static fields
.field public static final abj:Lorg/spongycastle/asn1/DERNull;

.field private static final abk:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v0}, Lorg/spongycastle/asn1/DERNull;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/spongycastle/asn1/DERNull;->abk:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Null;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method ex()Z
    .locals 1

    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method ey()I
    .locals 1

    .line 29
    const/4 v0, 0x2

    return v0
.end method

.method ˊ(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2

    .line 36
    sget-object v0, Lorg/spongycastle/asn1/DERNull;->abk:[B

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->ˊ(I[B)V

    .line 37
    return-void
.end method
