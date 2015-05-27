.class final Lo/ﻌ$ᐝ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﻌ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u141d"
.end annotation


# static fields
.field static final EU:[Lo/ﻌ$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lo/ﻌ$if;

    new-instance v1, Lo/ﾁ;

    const-string v2, "0\u0082\u0003\u00c10\u0082\u0002\u00a9\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u009cZ \u0002:B\u00cbe0"

    invoke-static {v2}, Lo/ﻌ$if;->ᒽ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ﾁ;-><init>([B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lo/ﾊ;

    const-string v2, "0\u0082\u0003\u00c10\u0082\u0002\u00a9\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00d4\u00d6\u00e4\u0092)\u00b4\u00e2\u00f00"

    invoke-static {v2}, Lo/ﻌ$if;->ᒽ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ﾊ;-><init>([B)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lo/ﻌ$ᐝ;->EU:[Lo/ﻌ$if;

    return-void
.end method
