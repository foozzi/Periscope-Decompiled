.class final Lo/ﻌ$ﾞ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﻌ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\uff9e"
.end annotation


# static fields
.field static final EU:[Lo/ﻌ$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lo/ﻌ$if;

    new-instance v1, Lo/ঘ;

    const-string v2, "0\u0082\u0003\u00140\u0082\u0002\u00d2\u00a0\u0003\u0002\u0001\u0002\u0002\u0004I\u0080m\u00e10\u000b\u0006\u0007*\u0086"

    invoke-static {v2}, Lo/ﻌ$if;->ᒽ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ঘ;-><init>([B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/ﻌ$ﾞ;->EU:[Lo/ﻌ$if;

    return-void
.end method
