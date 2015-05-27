.class public final Lo/hq;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/hq$1;,
        Lo/hq$if;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static ˊ(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 2

    .line 73
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/io/Writer;

    goto :goto_0

    :cond_0
    new-instance v0, Lo/hq$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/hq$if;-><init>(Ljava/lang/Appendable;Lo/hq$1;)V

    :goto_0
    return-object v0
.end method

.method public static ˋ(Lo/fw;Lo/kc;)V
    .locals 1

    .line 68
    sget-object v0, Lo/ir;->MR:Lo/gk;

    invoke-virtual {v0, p1, p0}, Lo/gk;->ˊ(Lo/kc;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public static ᐝ(Lo/jz;)Lo/fw;
    .locals 3

    .line 40
    const/4 v1, 0x1

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lo/jz;->J()Lo/kb;

    .line 43
    const/4 v1, 0x0

    .line 44
    sget-object v0, Lo/ir;->MR:Lo/gk;

    invoke-virtual {v0, p0}, Lo/gk;->ˋ(Lo/jz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fw;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lo/kd; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3

    return-object v0

    .line 45
    :catch_0
    move-exception v2

    .line 50
    if-eqz v1, :cond_0

    .line 51
    sget-object v0, Lo/fy;->Ku:Lo/fy;

    return-object v0

    .line 54
    :cond_0
    new-instance v0, Lo/gf;

    invoke-direct {v0, v2}, Lo/gf;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 55
    :catch_1
    move-exception v2

    .line 56
    new-instance v0, Lo/gf;

    invoke-direct {v0, v2}, Lo/gf;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 57
    :catch_2
    move-exception v2

    .line 58
    new-instance v0, Lo/fx;

    invoke-direct {v0, v2}, Lo/fx;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 59
    :catch_3
    move-exception v2

    .line 60
    new-instance v0, Lo/gf;

    invoke-direct {v0, v2}, Lo/gf;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
