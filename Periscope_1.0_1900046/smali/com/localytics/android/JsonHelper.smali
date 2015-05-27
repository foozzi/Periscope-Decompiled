.class final Lcom/localytics/android/JsonHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromJson(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 81
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 87
    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 89
    :cond_1
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    .line 91
    move-object v0, p0

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 95
    :cond_2
    return-object p0
.end method

.method static getMap(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
        }
    .end annotation

    .line 53
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static getSafeIntegerFromMap(Ljava/util/Map;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Ljava/lang/String;)I"
        }
    .end annotation

    .line 121
    const/4 v1, 0x0

    .line 122
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 124
    const/4 v0, 0x0

    if-ne v0, v2, :cond_0

    .line 126
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 130
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 132
    :cond_1
    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 134
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 137
    :cond_2
    :goto_0
    return v1
.end method

.method static getSafeListFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Ljava/lang/String;)Ljava/util/List<Ljava/lang/Object;>;"
        }
    .end annotation

    .line 182
    const/4 v1, 0x0

    .line 183
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 185
    const/4 v0, 0x0

    if-ne v0, v2, :cond_0

    .line 187
    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_0
    instance-of v0, v2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 191
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 194
    :cond_1
    return-object v1
.end method

.method static getSafeMapFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Ljava/lang/String;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
        }
    .end annotation

    .line 164
    const/4 v1, 0x0

    .line 165
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 167
    const/4 v0, 0x0

    if-ne v0, v2, :cond_0

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 171
    :cond_0
    instance-of v0, v2, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 173
    move-object v0, v2

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 176
    :cond_1
    return-object v1
.end method

.method static getSafeStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;Ljava/lang/String;)Ljava/lang/String;"
        }
    .end annotation

    .line 142
    const/4 v1, 0x0

    .line 143
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 145
    const/4 v0, 0x0

    if-ne v0, v2, :cond_0

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_0
    instance-of v0, v2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 151
    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 153
    :cond_1
    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 155
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 158
    :cond_2
    :goto_0
    return-object v1
.end method

.method static getSafeStringFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 101
    const/4 v1, 0x0

    .line 103
    const/4 v0, 0x0

    if-ne v0, p0, :cond_0

    .line 105
    const/4 v0, 0x0

    return-object v0

    .line 107
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 109
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 111
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 113
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 116
    :cond_2
    :goto_0
    return-object v1
.end method

.method static isEmptyObject(Lorg/json/JSONObject;)Z
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 21
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 23
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 24
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v3, v0

    .line 25
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 27
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/JsonHelper;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v2

    .line 31
    :cond_1
    instance-of v0, p0, Ljava/lang/Iterable;

    if-eqz v0, :cond_3

    .line 33
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 34
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 36
    invoke-static {v4}, Lcom/localytics/android/JsonHelper;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    return-object v2

    .line 42
    :cond_3
    return-object p0
.end method

.method static toList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 72
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 74
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->fromJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-object v1
.end method

.method static toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lorg/json/JSONObject;)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
        }
    .end annotation

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 59
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 60
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 63
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/localytics/android/JsonHelper;->fromJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    return-object v1
.end method
