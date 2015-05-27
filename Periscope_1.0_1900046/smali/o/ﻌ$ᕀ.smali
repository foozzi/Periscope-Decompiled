.class final Lo/ﻌ$ᕀ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﻌ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u1540"
.end annotation


# static fields
.field static final EU:[Lo/ﻌ$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lo/ﻌ$if;

    new-instance v1, Lo/ト;

    const-string v2, "0\u0082\u0003w0\u0082\u0002a\u0002\u0006\u0001A`\u008d\u0007v0\u000b\u0006\t*\u0086H\u0086\u00f7"

    invoke-static {v2}, Lo/ﻌ$if;->ᒽ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ト;-><init>([B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lo/リ;

    const-string v2, "0\u0082\u0003\u00cd0\u0082\u0002\u00b5\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u008b\u00dc\u001c\u00f6Rc?]0"

    invoke-static {v2}, Lo/ﻌ$if;->ᒽ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lo/リ;-><init>([B)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lo/ﻌ$ᕀ;->EU:[Lo/ﻌ$if;

    return-void
.end method
