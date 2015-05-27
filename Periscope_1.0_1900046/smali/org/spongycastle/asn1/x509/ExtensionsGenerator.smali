.class public Lorg/spongycastle/asn1/x509/ExtensionsGenerator;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private azo:Ljava/util/Hashtable;

.field private azq:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->azo:Ljava/util/Hashtable;

    .line 18
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/ExtensionsGenerator;->azq:Ljava/util/Vector;

    return-void
.end method
