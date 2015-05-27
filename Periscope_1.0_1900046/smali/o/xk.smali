.class public Lo/xk;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public bpu:Ljava/lang/String;
    .annotation runtime Lo/go;
        value = "cookie"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lo/vf;->tJ()Lo/zx;

    move-result-object v0

    invoke-virtual {v0}, Lo/zx;->ve()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    iput-object v1, p0, Lo/xk;->bpu:Ljava/lang/String;

    .line 18
    :cond_0
    return-void
.end method
