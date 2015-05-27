.class public abstract Lo/kq;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ɩ(Ljava/lang/String;)V
    .locals 1

    .line 18
    sget-object v0, Lo/kj;->NN:Lo/kq;

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lo/kj;->NN:Lo/kq;

    invoke-virtual {v0, p0}, Lo/kq;->ﹴ(Ljava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method

.method public static ﹾ(Ljava/lang/String;)V
    .locals 1

    .line 13
    sget-object v0, Lo/kj;->NN:Lo/kq;

    if-eqz v0, :cond_0

    .line 14
    sget-object v0, Lo/kj;->NN:Lo/kq;

    invoke-virtual {v0, p0}, Lo/kq;->ﯨ(Ljava/lang/String;)V

    .line 15
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract ﯨ(Ljava/lang/String;)V
.end method

.method protected abstract ﹴ(Ljava/lang/String;)V
.end method
