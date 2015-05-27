.class final Lo/ﻌ$ـ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﻌ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "\u0640"
.end annotation


# static fields
.field static final EU:[Lo/ﻌ$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lo/ﻌ$if;

    new-instance v1, Lo/ۅ;

    const-string v2, "0\u0082\u0003\u00b70\u0082\u0002\u009f\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00ff\u0005\u0014\u00a3oZ\u0006\u00ab0"

    invoke-static {v2}, Lo/ﻌ$if;->ᒽ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ۅ;-><init>([B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lo/ۉ;

    const-string v2, "0\u0082\u0003\u00b70\u0082\u0002\u009f\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u0092\u00da\u000fb\r\u00a7\u00a1\u00b30"

    invoke-static {v2}, Lo/ﻌ$if;->ᒽ(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lo/ۉ;-><init>([B)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lo/ﻌ$ـ;->EU:[Lo/ﻌ$if;

    return-void
.end method
