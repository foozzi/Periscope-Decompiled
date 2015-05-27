.class final Lo/ﻌ$ˉ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﻌ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u02c9"
.end annotation


# static fields
.field static final EU:[Lo/ﻌ$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lo/ﻌ$if;

    new-instance v1, Lo/ո;

    const-string v2, "0\u0082\u0003\u00c50\u0082\u0002\u00ad\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00956M\t\u00de\\B\u001e0"

    invoke-static {v2}, Lo/ﻌ$if;->ᒽ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ո;-><init>([B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lo/ս;

    const-string v2, "0\u0082\u0003\u00c50\u0082\u0002\u00ad\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u0095\u0097\u001dK4d\u001b\u00da0"

    invoke-static {v2}, Lo/ﻌ$if;->ᒽ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ս;-><init>([B)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lo/ﻌ$ˉ;->EU:[Lo/ﻌ$if;

    return-void
.end method
