.class Lorg/spongycastle/jcajce/provider/asymmetric/x509/ExtCRLException;
.super Ljava/security/cert/CRLException;
.source ""


# instance fields
.field aal:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p2, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/ExtCRLException;->aal:Ljava/lang/Throwable;

    .line 14
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/spongycastle/jcajce/provider/asymmetric/x509/ExtCRLException;->aal:Ljava/lang/Throwable;

    return-object v0
.end method
