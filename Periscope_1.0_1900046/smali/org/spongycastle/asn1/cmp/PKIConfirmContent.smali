.class public Lorg/spongycastle/asn1/cmp/PKIConfirmContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private ado:Lorg/spongycastle/asn1/ASN1Null;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 35
    sget-object v0, Lorg/spongycastle/asn1/DERNull;->abj:Lorg/spongycastle/asn1/DERNull;

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIConfirmContent;->ado:Lorg/spongycastle/asn1/ASN1Null;

    .line 36
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PKIConfirmContent;->ado:Lorg/spongycastle/asn1/ASN1Null;

    return-object v0
.end method
