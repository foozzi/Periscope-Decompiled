.class public Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# static fields
.field public static final aiX:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field static aiY:Ljava/util/Hashtable;

.field static aiZ:Lorg/spongycastle/asn1/eac/BidirectionalMap;

.field static aja:Ljava/util/Hashtable;


# instance fields
.field aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field aiW:Lorg/spongycastle/asn1/DERApplicationSpecific;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    sget-object v0, Lorg/spongycastle/asn1/eac/EACObjectIdentifiers;->abR:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "3.1.2.1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﾆ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->aiX:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->aiY:Ljava/util/Hashtable;

    .line 40
    new-instance v0, Lorg/spongycastle/asn1/eac/BidirectionalMap;

    invoke-direct {v0}, Lorg/spongycastle/asn1/eac/BidirectionalMap;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->aiZ:Lorg/spongycastle/asn1/eac/BidirectionalMap;

    .line 41
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->aja:Ljava/util/Hashtable;

    .line 45
    sget-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->aiY:Ljava/util/Hashtable;

    const/4 v1, 0x2

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RADG4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->aiY:Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "RADG3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->aiZ:Lorg/spongycastle/asn1/eac/BidirectionalMap;

    const/16 v1, 0xc0

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CVCA"

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/asn1/eac/BidirectionalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->aiZ:Lorg/spongycastle/asn1/eac/BidirectionalMap;

    const/16 v1, 0x80

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DV_DOMESTIC"

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/asn1/eac/BidirectionalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->aiZ:Lorg/spongycastle/asn1/eac/BidirectionalMap;

    const/16 v1, 0x40

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DV_FOREIGN"

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/asn1/eac/BidirectionalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->aiZ:Lorg/spongycastle/asn1/eac/BidirectionalMap;

    const/4 v1, 0x0

    invoke-static {v1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "IS"

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/asn1/eac/BidirectionalMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 177
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 179
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 180
    iget-object v0, p0, Lorg/spongycastle/asn1/eac/CertificateHolderAuthorization;->aiW:Lorg/spongycastle/asn1/DERApplicationSpecific;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 182
    new-instance v0, Lorg/spongycastle/asn1/DERApplicationSpecific;

    const/16 v1, 0x4c

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/DERApplicationSpecific;-><init>(ILorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method
