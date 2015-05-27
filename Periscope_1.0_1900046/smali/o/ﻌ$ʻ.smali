.class final Lo/ﻌ$ʻ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﻌ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u02bb"
.end annotation


# static fields
.field static final EU:[Lo/ﻌ$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lo/ﻌ$if;

    new-instance v1, Lo/ﾓ;

    const-string v2, "0\u0082\u0003\u00cb0\u0082\u0002\u00b3\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00ceZ*\u00c7\u00ff\u00b0\u00bdb0"

    invoke-static {v2}, Lo/ﻌ$if;->ᒽ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ﾓ;-><init>([B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lo/ō;

    const-string v2, "0\u0082\u0003\u00cb0\u0082\u0002\u00b3\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u0099\u00a4K7\u00ff\u001a\u0016\u00a20"

    invoke-static {v2}, Lo/ﻌ$if;->ᒽ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ō;-><init>([B)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lo/ﻌ$ʻ;->EU:[Lo/ﻌ$if;

    return-void
.end method
