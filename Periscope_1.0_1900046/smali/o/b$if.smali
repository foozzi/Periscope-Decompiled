.class public final Lo/b$if;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# static fields
.field public static FE:Lo/ﻏ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufecf<Ljava/lang/Boolean;>;"
        }
    .end annotation
.end field

.field public static FF:Lo/ﻏ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufecf<Ljava/lang/Integer;>;"
        }
    .end annotation
.end field

.field public static FG:Lo/ﻏ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufecf<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field public static FH:Lo/ﻏ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufecf<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field public static FI:Lo/ﻏ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufecf<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field public static FJ:Lo/ﻏ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufecf<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field public static FK:Lo/ﻏ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\ufecf<Ljava/lang/Long;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "gms:common:stats:logging:debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/ﻏ;->ˏ(Ljava/lang/String;Z)Lo/ﻏ;

    move-result-object v0

    sput-object v0, Lo/b$if;->FE:Lo/ﻏ;

    const-string v0, "gms:common:stats:logging:level"

    sget v1, Lo/c;->FL:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ﻏ;->ˊ(Ljava/lang/String;Ljava/lang/Integer;)Lo/ﻏ;

    move-result-object v0

    sput-object v0, Lo/b$if;->FF:Lo/ﻏ;

    const-string v0, "gms:common:stats:logging:ignored_calling_processes"

    const-string v1, ""

    invoke-static {v0, v1}, Lo/ﻏ;->ͺ(Ljava/lang/String;Ljava/lang/String;)Lo/ﻏ;

    move-result-object v0

    sput-object v0, Lo/b$if;->FG:Lo/ﻏ;

    const-string v0, "gms:common:stats:logging:ignored_calling_services"

    const-string v1, ""

    invoke-static {v0, v1}, Lo/ﻏ;->ͺ(Ljava/lang/String;Ljava/lang/String;)Lo/ﻏ;

    move-result-object v0

    sput-object v0, Lo/b$if;->FH:Lo/ﻏ;

    const-string v0, "gms:common:stats:logging:ignored_target_processes"

    const-string v1, ""

    invoke-static {v0, v1}, Lo/ﻏ;->ͺ(Ljava/lang/String;Ljava/lang/String;)Lo/ﻏ;

    move-result-object v0

    sput-object v0, Lo/b$if;->FI:Lo/ﻏ;

    const-string v0, "gms:common:stats:logging:ignored_target_services"

    const-string v1, "com.google.android.gms.auth.GetToken"

    invoke-static {v0, v1}, Lo/ﻏ;->ͺ(Ljava/lang/String;Ljava/lang/String;)Lo/ﻏ;

    move-result-object v0

    sput-object v0, Lo/b$if;->FJ:Lo/ﻏ;

    const-string v0, "gms:common:stats:logging:time_out_duration"

    const-wide/32 v1, 0x927c0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lo/ﻏ;->ˊ(Ljava/lang/String;Ljava/lang/Long;)Lo/ﻏ;

    move-result-object v0

    sput-object v0, Lo/b$if;->FK:Lo/ﻏ;

    return-void
.end method
