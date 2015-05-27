.class public abstract Lo/ٴ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ٴ$if;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static enableDebugLogging(Z)V
    .locals 0

    .line 177
    sput-boolean p0, Lo/ᴵ;->DEBUG:Z

    .line 178
    return-void
.end method


# virtual methods
.method public abstract destroyLoader(I)V
.end method

.method public abstract ʽ(I)Lo/יּ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:Ljava/lang/Object;>(I)Lo/\ufb39<TD;>;"
        }
    .end annotation
.end method

.method public abstract ˊ(ILandroid/os/Bundle;Lo/ٴ$if;)Lo/יּ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:Ljava/lang/Object;>(ILandroid/os/Bundle;Lo/\u0674$if<TD;>;)Lo/\ufb39<TD;>;"
        }
    .end annotation
.end method

.method public abstract ˋ(ILandroid/os/Bundle;Lo/ٴ$if;)Lo/יּ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:Ljava/lang/Object;>(ILandroid/os/Bundle;Lo/\u0674$if<TD;>;)Lo/\ufb39<TD;>;"
        }
    .end annotation
.end method

.method public ᐨ()Z
    .locals 1

    .line 184
    const/4 v0, 0x0

    return v0
.end method
