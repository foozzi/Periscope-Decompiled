.class final Lo/ﻌ$ˈ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﻌ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u02c8"
.end annotation


# static fields
.field static final EU:[Lo/ﻌ$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lo/ﻌ$if;

    new-instance v1, Lo/յ;

    const-string v2, "0\u0082\u0003\u00cf0\u0082\u0002\u00b7\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00f3.E>\u00a3\u0005G\u00f90"

    invoke-static {v2}, Lo/ﻌ$if;->ᒽ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lo/յ;-><init>([B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lo/ﻌ$ˈ;->EU:[Lo/ﻌ$if;

    return-void
.end method
