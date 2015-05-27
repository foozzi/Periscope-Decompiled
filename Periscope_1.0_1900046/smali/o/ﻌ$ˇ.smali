.class final Lo/ﻌ$ˇ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﻌ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u02c7"
.end annotation


# static fields
.field static final EU:[Lo/ﻌ$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lo/ﻌ$if;

    new-instance v1, Lo/ᖸ;

    const-string v2, "0\u0082\u0003\u00ed0\u0082\u0002\u00d5\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00a7\u00cb\u0092\u00c6\u0006\u0095N\u000c0"

    invoke-static {v2}, Lo/ﻌ$if;->ᒽ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ᖸ;-><init>([B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lo/ᖺ;

    const-string v2, "0\u0082\u0003\u00ed0\u0082\u0002\u00d5\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u0089ai\u00b21\u00c1\u0018\u00e60"

    invoke-static {v2}, Lo/ﻌ$if;->ᒽ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ᖺ;-><init>([B)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lo/ﻌ$ˇ;->EU:[Lo/ﻌ$if;

    return-void
.end method
