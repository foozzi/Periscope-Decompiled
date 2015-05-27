.class public Lorg/spongycastle/asn1/x500/style/BCStrictStyle;
.super Lorg/spongycastle/asn1/x500/style/BCStyle;
.source ""


# static fields
.field public static final awn:Lorg/spongycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lorg/spongycastle/asn1/x500/style/BCStrictStyle;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x500/style/BCStrictStyle;-><init>()V

    sput-object v0, Lorg/spongycastle/asn1/x500/style/BCStrictStyle;->awn:Lorg/spongycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lorg/spongycastle/asn1/x500/style/BCStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/asn1/x500/X500Name;Lorg/spongycastle/asn1/x500/X500Name;)Z
    .locals 5

    .line 18
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x500/X500Name;->gK()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v2

    .line 19
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x500/X500Name;->gK()[Lorg/spongycastle/asn1/x500/RDN;

    move-result-object v3

    .line 21
    array-length v0, v2

    array-length v1, v3

    if-eq v0, v1, :cond_0

    .line 23
    const/4 v0, 0x0

    return v0

    .line 26
    :cond_0
    const/4 v4, 0x0

    :goto_0
    array-length v0, v2

    if-eq v4, v0, :cond_2

    .line 28
    aget-object v0, v2, v4

    aget-object v1, v3, v4

    invoke-virtual {p0, v0, v1}, Lorg/spongycastle/asn1/x500/style/BCStrictStyle;->ˊ(Lorg/spongycastle/asn1/x500/RDN;Lorg/spongycastle/asn1/x500/RDN;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    const/4 v0, 0x0

    return v0

    .line 26
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
